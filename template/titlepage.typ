#import "text.typ": *
#let titlepage(
  论文题目: "重庆医科大学本科毕业论文",
  作者姓名: "张三",
  指导老师: "李四",
  职称: "教授",
  单位名称: "重庆医科大学",
  年级专业: "2021级 xx专业",
  答辩年月: "2025.2",
) = {
  set text(
    font: 字体.宋体,
    size: 字号.小四,
    fallback: false,
    style: "normal",
    weight: "regular",
    lang: "zh",
    region: "cn",
  )
  align(center)[
    #image("logo.png")
    #text(size: 字号.初号,font: 字体.楷体)[*本科毕业论文*]
    #v(10%)
    #grid(
      columns: (auto, auto),
      row-gutter: 1em,
      rows:1em,
      text(size: 字号.四号)[论文题目],text(size: 字号.三号)[*#论文题目*],
      [],line(length: 100%),
      text(size: 字号.四号)[作者姓名],text(size: 字号.三号)[*#作者姓名*],
      [],line(length: 100%),
      text(size: 字号.四号)[指导老师],text(size: 字号.小三)[*#指导老师*],
      [],line(length: 100%),
      text(size: 字号.四号)[职#h(2em)称],text(size: 字号.小三)[*#职称*],
      [],line(length: 100%),
      text(size: 字号.四号)[单位名称],text(size: 字号.小三)[*#单位名称*],
      [],line(length: 100%),
      text(size: 字号.四号)[年级专业],text(size: 字号.小三)[*#年级专业*],
      [],line(length: 100%),
      text(size: 字号.四号)[答辩年月],text(size: 字号.小三)[*#答辩年月*],
      [],line(length: 100%),
    )
  ]
}