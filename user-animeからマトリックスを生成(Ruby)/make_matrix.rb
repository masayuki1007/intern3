#csvの読み込み
file = open("user_anime_id.csv","r:UTF-8")
 
#536089*29で要素が0の行列を定義
u_t_matrix = Array.new(536089){Array.new(29){0}}
 
#u_t_matrix[user][title]に1を代入していく
file.each_line do |line|
    lineAry = line.split(",")
    u_t_matrix[lineAry[0].to_i-1][lineAry[1].to_i-1] = 1
end
file.close
 
#出力先ファイルの用意
file_out = open('user_anime_matrix.csv',"w") 
 
#matrixをcsv形式に変換
for i in 1..536089 do
	str = ""
  for j in 1..28 do
  	str = str + u_t_matrix[i-1][j-1].to_s + "\,"
  end
    str = str + u_t_matrix[i-1][29-1].to_s
    file_out.puts(str)
end
 
file_out.close