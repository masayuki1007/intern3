##類似度行列を読み込んで、二次元空間で表現

##csvの読み込み
sim <- read.csv("cos_sim.csv")

##距離行列に変換
dd <- as.dist(sim)

#mdsで二次元配置
result <- cmdscale(dd)
plot(result)
text(result, labels = rownames(result))
