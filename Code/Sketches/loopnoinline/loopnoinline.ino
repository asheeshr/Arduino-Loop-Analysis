void setup()
{
  Serial.begin(9600);
}

void __attribute__ ((noinline)) loop()
{
    Serial.println(micros());
    delay(100);
}
