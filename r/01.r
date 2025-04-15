
dt <- data.frame(
    name=c("John", "Jane", "Jim"),
    age=c(30, 25, 35)
    # height=c(180, 170, 175),
)

print('data')
print(dt)


library('ggplot2')

average_age <- mean(dt$age)

cat('Average age:', average_age)

ggplot(
    data=dt,
    aes(x=name, y=age),
    label=name,
)+
geom_point(
    color='blue',
    size=3
)+
geom_text(
    nudge_y=4,
    color='black',
    label=dt$name,
)+
labs(
    title='Ages of people',
    x='Name',
    y='Age'
)
theme_minimal()
ggsave(
    filename='plot.png', 
)