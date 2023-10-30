# FOr Each
```
1..10
1..10 | foreach {$_*2}
1..10 | foreach {"This is loop number $_"}
```

```
 1..10 | foreach {if($_%2){"This is odd number"}}
```