**Build docker image**
```bash
docker build -t ruby-gdal:issue .
```

**Test C++** *OGRRegisterAll()* **and** *OGRGetDriverByName()*
```bash
docker run ruby-gdal:issue bash test.sh
```

**Test Ruby bindings for** *OGRRegisterAll()* **and** *OGRGetDriverByName()*
```bash
docker run ruby-gdal:issue ruby test.rb
```

