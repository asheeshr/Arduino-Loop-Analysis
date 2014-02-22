void setup()
{
  Serial.begin(9600);
}

void loop()
{
  while(1)
  {
    Serial.println(micros());
    delay(100);
  }
}
