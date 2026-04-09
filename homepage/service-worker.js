const HOST_NAME = location.host;
const VERSION_NAME = 'CACHE-v1';
const CACHE_NAME = HOST_NAME + '-' + VERSION_NAME;
const MATCH_RULE = "?v=0."

self.addEventListener('install', function(event) {
    console.warn('Service Worker install success:');
});

self.addEventListener('activate', function(event) { // Perform some task  
    console.warn('Service Worker activate success:');
});

const handleFetchRequest = function(request) {
    // console.warn("service worker handleFetchRequest --------", request.url, request.method);
    // if ("GET" === request.method) {
        if (request.url.indexOf(MATCH_RULE) != -1) {
            // console.warn("NotMatch From Net --------", request.url);
            return fetch(request)
        } else {
            return caches.match(request)
                .then(function(response) {
                    return response || fetch(request)
                        .then(function(response) {
                            // console.warn("From Net --------", request.url);
                            const clonedResponse = response.clone();
                            caches.open(CACHE_NAME)
                                .then(function(cache) {
                                    cache.put(request, clonedResponse);
                                });
                            return response;
                        });
                });
        }
    // }else
    // {
        // fetch(request).then(function(response) {
                            // console.warn("%%%%%%%%%%%service worker pose --------", request.url);
                            // return response;
                        // });
    // }
};

self.addEventListener('fetch', function(event) {
    // console.warn("@@@@@@@@@@addEventListener --------", event);
    if(event && event.request && "POST" === event.request.method) //post的respondWith会报错
    {
        // console.warn("!!!!!!!!!!!!!!!addEventListener POST --------");
    }else
    {
        event.respondWith(
            handleFetchRequest(event.request)
        );
    }
});