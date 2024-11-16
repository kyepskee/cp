#set page(margin: 1cm, columns: 2)

#set text(
  font: "Fantasque Sans Mono",
  size: 9pt
)

#let file(name) = {
  let text = read("contest/" + name)
  
  // box([
  block(
    breakable: false,
    [
      = #name
      #line(length: 100%)
      #raw(text)
      #line(length: 100%)
    ])
  // ])
}

#file(".vimrc")
#file(".bashrc")
#file("sol.cpp")
#file("debug.h")
