package zshcompletion;

import haxe.Http;
import sys.io.File;

class Main {
  static public function main() {
    switch (Sys.args()[0]) {
      case "remote":
        remoteList();
    }
  }

  static public function remoteList():Void {
    scrapeRemoteList();
  }

  static private function scrapeRemoteList():Void {
    var xml=Xml.parse(Http.requestUrl("http://lib.haxe.org/all"));
    var libraries:Array<String> = new Array();
    var descriptions:Array<String> = new Array();

    trace(xml.firstChild().nodeName);
    xml = xml.firstChild();
    trace(xml.firstElement().nodeName);
    for( body in xml.elementsNamed("body") ) {
      for( pageDiv in body.elementsNamed("div") ) {
        if( pageDiv.get("class") == "page" ) {
          for( contentDiv in pageDiv.elementsNamed("div") ) {
            if( contentDiv.get("class") == "content" ) {
              for( projectsDiv in contentDiv.elementsNamed("div") ) {
                if( projectsDiv.get("class") == "projects" ) {
                  for( ul in projectsDiv.elementsNamed("ul") ) {
                    for( entry in ul.elementsNamed("li") ) {
                      for( detail in entry.elements() ) {
                        if(detail.nodeName == "a") {
                          libraries.push(detail.firstChild().nodeValue);
                        } else {
                          descriptions.push(detail.firstChild().nodeValue);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }


    // TODO: Write the file:
    // $library:$description
    for(a in 1...(descriptions.length)) {
      Sys.println('${libraries[a]}:${descriptions[a]}');
    }
  }
}



//Sys.println(Http.requestUrl("http://lib.haxe.org/all"));