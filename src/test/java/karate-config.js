function fun(){
// base config JSON
var config = {
    baseURL_ReqRes : 'https://reqres.in'

 }
 // don't waste time waiting for a connection or if servers don't respond within 5 seconds
//   karate.configure('connectTimeout', 5000);
//   karate.configure('readTimeout', 5000);

 return config;
}