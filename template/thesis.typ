#import "text.typ": *
#import "titlepage.typ": *

#let thesis(
  论文题目: "重庆医科大学本科毕业论文",
  英文题目: "CQMU THESIS",
  作者姓名: "张三",
  指导老师: "李四",
  职称: "教授",
  单位名称: "重庆医科大学",
  年级专业: "2021级 xx专业",
  答辩年月: "2025.2",
  中文摘要: [],
  关键词:("重医","论文","张三"),
  英文摘要: [],
  KeyWords:("CQMU","THESIS","Zhang San"),
  前言: [],
  参考文献: "random.bib",
  致谢: [],
  正文,
)={
  set document(title: 论文题目,author: 作者姓名)
  set page(margin: (x: 2.5cm, top: 3.0cm, bottom: 2.5cm),"a4")
  set par(first-line-indent: 2em,leading: 1em)
  
  titlepage(
    论文题目: 论文题目,
    作者姓名: 作者姓名,
    指导老师: 指导老师,
    职称: 职称,
    单位名称: 单位名称,
    年级专业: 年级专业,
    答辩年月: 答辩年月,
  )
  pagebreak()

  counter(page).update(1)
  set page(numbering: "1")
  align(center)[
    #set text(font: 字体.黑体,size: 字号.小四,weight: "bold")
    #outline(
      title: text(size: 字号.小二)[目录],
      indent: 2em,
    )
  ]
  pagebreak()
  
  [
    #show heading: none
    = 中文摘要
    #align(center)[#text(font: 字体.黑体,size: 字号.小二)[*#论文题目* \ \ *摘要* \ \ ]]
    #set text(font: 字体.宋体,size: 字号.小四)
    #中文摘要
    \ \
    #text(font: 字体.黑体,size: 字号.四号)[*关键词：*]
    #关键词.join("，", last: " 和 ")
  ]
  pagebreak()

  [
    #show heading: none
    = 英文摘要
    #align(center)[#text(font: 字体.代码,size: 字号.三号)[*#英文题目* \ \ *ABSTRACT* \ \ ]]
    #set text(font: 字体.代码,size: 字号.小四)
    #英文摘要
    \ \
    #text(font: 字体.代码,size: 字号.四号)[*Key words:*]
    #KeyWords.join(", ", last: " and ")
  ]
  pagebreak()

  [
    #show heading: none
    = #论文题目
    = 前言
    #set text(font: 字体.黑体)
    #align(center)[#text(size: 字号.小二)[*#论文题目*] \ \ #text(size: 字号.三号)[*前言*] \ \ ]
    #set text(font: 字体.宋体,size: 字号.小四)
    #前言
  ]

  [
    #set heading(numbering: "1.1")
    #show heading: set text(font: 字体.黑体, size: 字号.小四)
    #show heading.where(level: 1): set text(size: 字号.四号)
    #set text(font: 字体.宋体,size: 字号.小四)
    #正文
    #set heading(numbering: none)
  ]
  
  [
    #pagebreak()
    = 参考文献
    \ \ 
    #bibliography(参考文献, title: none,full: true,style: "gb-7714-2015-numeric")
    #pagebreak()
    = 致谢
    \ \ 
    #set text(font: 字体.宋体,size: 字号.小四)
    #致谢
  ]
}