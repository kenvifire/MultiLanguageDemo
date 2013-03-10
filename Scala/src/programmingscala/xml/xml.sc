/**
 * Created with IntelliJ IDEA.
 * User: kenvi
 * Date: 13-2-7
 * Time: 下午10:25
 * To change this template use File | Settings | File Templates.
 */

object xml{
  val  therm = new CCTherm {
    val condition: Int = 9
    val description: String = "hot dog 5"
    val bookPrice: Int = 10
    val purchasePrice: Int = 2199
    val yearMade: Int = 1952
    val dateObtained: String = "March 14,2006"
  }
  println(therm.toXML)
















//Extractiong text
  <a>input</a>.text
 //Extracting sub-elements

  <a><b><c>hello</c></b></a> \ "b"

  <a><b><c>hello</c></b></a> \ "c"
  //Extracting attributes
  val joe = <employee name ="joe" rank ="code monkey" serial="123" />
  joe \ "@name"
  //
  //Deserialization

  def fromXML(node:scala.xml.Node):CCTherm =
    new CCTherm{
      val description = (node \ "description").text
      val yearMade = (node \ "yearMade").text.toInt
      val dateObtained  = (node \ "dateObtained").text
      val bookPrice = (node \ "bookPrice").text.toInt
      val purchasePrice = (node \ "purchasePrice").text.toInt
      val condition = (node \ "condition").text.toInt
    }
  val node = therm.toXML
















  //Loading and saving
  scala.xml.XML.save("d:\\therm1.xml",node)
  val loadnode = xml.XML.loadFile("d:\\therm1.xml")


















  //pattern matching on XML
  def proc(node:scala.xml.Node):String =
    node match{
      case <a>{contents}</a> => "It's a:" +contents
      case <b>{contents}</b> => "It's a:"+contents
      case _ => "It's something else."
    }
  proc(<a>apple</a>)
  proc(<b>banana</b>)
  proc(<c>cherry</c>)
  proc(<a>a<em>red</em>apple</a>)


  def  proc2(node:scala.xml.Node):String =
    node match{
      case <a>{contents @ _*}</a> => "It's an a :"+contents
      case <b>{contents @ _*}</b> => "It's a b:"+contents
      case _ => "It's something else"
    }
  proc2(<a>a<em>rem</em>apple</a>)
  val catlog =
    <catalog>
      <cctherm>
        <description>hot dog #5</description>
        <yearMade>1952</yearMade>
        <dateObtained>March 14,2006</dateObtained>
        <bookPrice>2199</bookPrice>
        <purchasePrice>500</purchasePrice>
        <contents>9</contents>
      </cctherm>
      <catalog>
        <cctherm>
          <description>hot dog #6</description>
          <yearMade>1952</yearMade>
          <dateObtained>March 14,2006</dateObtained>
          <bookPrice>2199</bookPrice>
          <purchasePrice>500</purchasePrice>
          <contents>9</contents>
        </cctherm>
    </catalog>
}
