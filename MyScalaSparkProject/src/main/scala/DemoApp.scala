import org.apache.spark.sql.SparkSession

object DemoApp {
  def main(args: Array[String]): Unit = {
    println("Hello World")
    val spark = SparkSession.builder().appName("DemoSpark").getOrCreate()
    println(spark.version)
    val sc = spark.sparkContext
    sc.setLogLevel("ERROR")

    val ardd = sc.parallelize(1 to args(0).toInt)
    println(ardd.sum())
  }
}
