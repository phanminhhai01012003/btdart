/*
TemplateString:
Input: a template file, and params, the file content and param names are not fixed
Output: a new file with the template content and the passed params.
*/
import 'dart:io';

void templateString(String templateFilePath, String outputFilePath, Map<String, String> params){
  if (!File(templateFilePath).existsSync()) {
    throw Exception('Template file does not exist');
  }
  String templateContent = File(templateFilePath).readAsStringSync();
  for (var key in params.keys) {
    templateContent = templateContent.replaceAll('${key}', params[key]!);
  }
  File(outputFilePath).writeAsStringSync(templateContent);
}
void main(){
  try{
    String templateFilePath = 'template.txt';
    String outputFilePath = 'output.txt';
    Map<String, String> params = {'name': 'Jonny'};
    templateString(templateFilePath, outputFilePath, params);
    print('Output file ${outputFilePath} created successfully!');
  }catch (e) {
    print('Error: ${e.toString()}');
  }
}