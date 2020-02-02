// 爬取豆瓣电影 TOP250
package main

import (
	"log"

	"github.com/cnanl/douban-movie/model"
	"github.com/cnanl/douban-movie/parse"
)

var (
	BaseUrl = "https://movie.douban.com/top250"
)

// 新增数据
func Add(movies []parse.DoubanMovie) {
	for index, movie := range movies {
		if err := model.DB.Create(&movie).Error; err != nil {
			log.Printf("db.Create index: %d, err : %v", index, err)
		}
	}
}

// 开始爬取
func Start() {
	var movies []parse.DoubanMovie

	pages := parse.GetPages(BaseUrl)
	for _, page := range pages {
		doc := parse.GetDoc(BaseUrl + page.Url)
		movies = append(movies, parse.ParseMovies(doc)...)
	}
	Add(movies)

}

func main() {
	Start()

	defer model.DB.Close()
}
