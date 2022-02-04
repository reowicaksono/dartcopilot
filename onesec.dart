void main() {
  List<int> newList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

}

Function helloWorld = () {
  print("Hello World");
};
// create function get data from api
Function getData3 = () async {
  //import package http
  var http;
  var response = await http.get(
      "https://jsonplaceholder.typicode.com/posts/1"); // get data from api
  print(response.body);
  if (response.statusCode == 200) {
    print("OK");
  } else {
    print("Error");
  }
};

//reverse list
Function reverseList = (List list) {
  List<int> newList = [];
  for (int i = list.length - 1; i >= 0; i--) {
    newList.add(list[i]);
  }
  return newList;
};

Function binarySearch = (List list, int value) {
  int low = 0;
  int high = list.length - 1;
  while (low <= high) {
    int mid = (low + high) ~/ 2;
    if (list[mid] == value) {
      return mid;
    } else if (list[mid] < value) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
};

// Await function
Function awaitFunction = () async {
  var http;
  var response = await http.get(
      "https://jsonplaceholder.typicode.com/posts/1"); // get data from api
  print(response.body);
  if (response.statusCode == 200) {
    print("OK");
  } else {
    print("Error");
  }
};



