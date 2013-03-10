abstract class CCTherm{
	val description:String
	val yearMade:Int
	val dateObtained:String
	val bookPrice:Int
	val purchasePrice:Int
	val condition:Int
	override def toString = description

  def toXML =
    <cctherm>
      <description>{description}</description>
      <yearMade>{yearMade}</yearMade>
      <dateObtained>{dateObtained}</dateObtained>
      <bookPrice>{bookPrice}</bookPrice>
      <purchasePrice>{bookPrice}</purchasePrice>
      <condition>{condition}</condition>
    </cctherm>



}