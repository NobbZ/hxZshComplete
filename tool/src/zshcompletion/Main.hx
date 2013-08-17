package zshcompletion;

import haxe.Http;

class Main {
  static public function main() {
    Sys.println(Http.requestUrl("http://lib.haxe.org/all"));
  }
}