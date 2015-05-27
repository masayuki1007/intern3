import org.apache.spark.SparkContext
import org.apache.spark.mllib.clustering.KMeans
import org.apache.spark.mllib.linalg.Vectors
import java.io.PrintWriter

object animeKmeans extends App {
  val context = new SparkContext("local", "demo")

  val data = context.
    textFile("anime_usr_matrix.csv").
    filter(_.nonEmpty).
    map { s =>
      val elems = s.split(",")
      (elems.last, Vectors.dense(elems.init.map(_.toDouble)))
    }

  val k = 4 // クラスタの個数を指定します
  val maxItreations = 1000 // K-means のイテレーション最大回数を指定します
  val clusters = KMeans.train(data.map(_._2), k, maxItreations)

  var p = new PrintWriter("output.txt")

  // クラスタリング結果の出力
  data.foreach { tuple =>
    p.println(f"(${tuple._1}%s) : cluster = ${clusters.predict(tuple._2)}%d")
  }
  p.flush
  p.close
  
}

