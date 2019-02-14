int score(String string){
  List<Map<String,dynamic>> values = [
    {'characters':['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'], 'value':1},
    {'characters':['D','G'], 'value':2},
    {'characters':['B','C','M','P'], 'value':3},
    {'characters':['F','H','V','W','Y'], 'value':4},
    {'characters':['K'], 'value':5},
    {'characters':['J','X'], 'value':8},
    {'characters':['Q','Z'], 'value':8},
  ];
  int value = 0;
  string.runes.forEach((rune) => 
    value += values.singleWhere((item) => 
      item['characters'].contains(new String.fromCharCode(rune).toUpperCase())
    )['value']
  );
  return value;
}