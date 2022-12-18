/* Define Timeclass with hourand minuteas data member. Also define addition() method to add two-time objects */

class TimeClass {
  int seconds=0,minutes=0,hours=0;
  TimeClass({ required int hours,required int minutes,required int seconds})
  {
    this.hours=hours;
    this.minutes=minutes;
    this.seconds=seconds;
  }
  void addition(TimeClass t)
  {
    TimeClass temp=TimeClass(hours: 0, minutes: 0, seconds: 0);
    temp.hours=hours+t.hours;
    temp.minutes=minutes+t.minutes;
    temp.seconds=seconds+t.seconds;
    if (temp.seconds>=60) {
      temp.minutes+=temp.seconds~/60;
      temp.seconds=temp.seconds%60;
    }
    if (temp.minutes>=60) {
      temp.hours+=temp.minutes~/60;
      temp.minutes=temp.minutes%60;
    }
    // return TimeClass(hours: this.hours, minutes: this.minutes, seconds: this.seconds);
    print("Hours : ${temp.hours}  Minutes : ${temp.minutes} Seconds : ${temp.seconds}");

  }
  void display()
  {
    print("Hours : $hours  Minutes : $minutes Seconds : $seconds");
  }
}

void main(List<String> args) {
  TimeClass t1=new TimeClass(hours: 3, minutes: 50, seconds: 50);
  TimeClass t2=new TimeClass(hours: 3, minutes: 50, seconds: 10);
  t1.addition(t2);
}