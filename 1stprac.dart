// Name: Sani e zehra
// Roll Number: 2380256
// Program: BSSE


void main() {
  List<String> sentences = [
    "this is a test this is",
    "hello hello world",
    "dart is fun fun fun"
  ];

  for (int i = 0; i < sentences.length; i++) {
    String line = sentences[i];
    List<String> words = line.split(" ");

    Map<String, int> frequency = {};

    
    for (String word in words) {
      frequency[word] = (frequency[word] ?? 0) + 1;
    }

    
    int maxFreq = 0;
    for (int count in frequency.values) {
      if (count > maxFreq) {
        maxFreq = count;
      }
    }


    List<String> highestWords = [];
    frequency.forEach((word, count) {
      if (count == maxFreq) {
        highestWords.add(word);
      }
    });

    print('$highestWords (appears $maxFreq times in line ${i + 1})');
  }
}
