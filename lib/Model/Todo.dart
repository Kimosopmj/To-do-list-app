class ToDo {
  String? id;
  String? todotext;
  bool isDone;

  ToDo({
    required this.id,
    required this.todotext,
    this.isDone = false,
  });
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todotext: 'Clock in on Keka', isDone: true),
      ToDo(id: '02', todotext: 'check Mails', isDone: true),
      ToDo(
        id: '03',
        todotext: 'verify and close mails',
      ),
      ToDo(
        id: '04',
        todotext: 'clear reservation tasks',
      ),
      ToDo(
        id: '05',
        todotext: 'Mak ledger entries',
      ),
      ToDo(
        id: '06',
        todotext: 'verify colligues work',
      ),
      ToDo(id: '07', todotext: 'clock out '),
    ];
  }
}
