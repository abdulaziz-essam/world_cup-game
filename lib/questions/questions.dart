import '../countries/argentina.dart';
class Questions{

  // List question=["how many goals ronaldo scores","how many goals CR7 have","how many time saudi arabia....","who win world cup in 2006"];
List answers=[1,2,5];
Argentina arg_questions=new Argentina();
String country="";
// getQuestions(){
//   return this.question;
// }

  setCountry(country){
    this.country=country;
  }

  getCountryQuestions(){
  // if(this.country=="argentina"){

    return arg_questions.getQuestions();}
  //}

}