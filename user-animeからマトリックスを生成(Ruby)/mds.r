##�ގ��x�s���ǂݍ���ŁA�񎟌���Ԃŕ\��

##csv�̓ǂݍ���
sim <- read.csv("cos_sim.csv")

##�����s��ɕϊ�
dd <- as.dist(sim)

#mds�œ񎟌��z�u
result <- cmdscale(dd)
plot(result)
text(result, labels = rownames(result))
