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
       baseUrl: 'https://api.spotify.com/v1/',
       user: 'juanPerez',
       clientId: 'da05b63f479343aea3bff67336a4dce4',
       clientSecret: '78b6ba039eda41cba5e0d28c97509711',
       redirectUri: 'https://spotify.apitest:3000'
    }

    return config;
}