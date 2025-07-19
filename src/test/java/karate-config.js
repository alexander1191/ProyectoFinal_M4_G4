function fn() {
    // get system property 'karate.env'
    let env = karate.env;
    // settings to wait a response from servers 5 seconds
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    karate.log('karate.env property was:', env);

    if (!env) {
        env = 'dev';
    }

    var config = {
       env: env,
       baseUrl: 'https://6878376731d28a460e1d7d80.mockapi.io/api/v1/',
       user: 'chambiFraya'
    }

    return config;
}