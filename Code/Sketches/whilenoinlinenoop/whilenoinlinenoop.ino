void setup()
{
  Serial.begin(9600);
}

void __attribute__ ((noinline)) loop()
{
  while(1)
  {
    __asm__ __volatile__("");
    Serial.println(micros());
    delay(100);
  }
}
