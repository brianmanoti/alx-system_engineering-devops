In this debugging series, broken/bugged webstacks are assessed. The motivation is to come up with Bash/Puppet scripts that once executed, will bring the webstacks to a working state.

Web stack debugging involves identifying and resolving errors, performance bottlenecks, and misconfigurations in the components that make up a web application's infrastructure. You can get useful info from logs, and shell commands meant to analyze server state, system status, appliaction status etc.

When debugging, sometimes logs are not enough. Either because the software is breaking in a way that was not expected and the error is not being logged, or because logs are not providing enough information.

In this context, we're testing how well a Nginx web server setup is doing under pressure - we are getting a huge amount of failed requests. We'll fix the rate limit/failed requests problem. And we'll fix some OS and UNIX user related problems as well.

Tasks 0. Sky is the limit, let's bring that limit higher mandatory In this web stack debugging task, we are testing how well our web server setup featuring Nginx is doing under pressure and it turns out it’s not doing well: we are getting a huge amount of failed requests.

For the benchmarking, we are using ApacheBench which is a quite popular tool in the industry. It allows you to simulate HTTP requests to a web server. In this case, I will make 2000 requests to my server with 100 requests at a time. We can see that 943 requests failed, let’s fix our stack so that we get to 0, and remember that when something is going wrong, logs are your best friends!
