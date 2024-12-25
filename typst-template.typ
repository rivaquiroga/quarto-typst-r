#let internet-report(
  title: "title",
  body,
) = {

set text(
    font: "Poppins",
    size: 12pt
  )
  
set par(
  justify:true
)
  
set page(
  "us-letter",
  margin: (x: 3.5cm, y: 3.5cm),
  background: place(
    top + left, rect(
    fill: rgb("#fab420"),
    width: 100%,
    height: 2.5cm,
    )
  ),
  header: align(horizon, 
  grid(
      columns: (80%, 20%),
      align(left, text(size: 25pt, fill: white, weight: "bold", title)),
      align(right,image("internet.png", height: 100%))
    )
    ),
  footer: align(
    center,
    text(
      size: 14pt,
      fill: gray,
      counter(page).display("1")
    )
  )
)
  
  body
  
}