'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"index.html": "6f300d9aad07b27850d65d24d5e23838",
"/": "6f300d9aad07b27850d65d24d5e23838",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "753a77ab84c26f016b75729c469df551",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"flutter_bootstrap.js": "0fcc13c6f298600b3bd9379f84871856",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "569a0335ebadd5575fbf20940a878daa",
"assets/assets/images/folder_red.png": "161284e3a8275d5a7772229eabdb605d",
"assets/assets/images/ultralytics.png": "9c818d13c734aecab2f05566e2c85fa0",
"assets/assets/images/folder_orange.png": "8c9932cb9cddcd74bdc5fb352230eb69",
"assets/assets/images/ros2.png": "b4c05719cf06e567682d1faaeef767f0",
"assets/assets/images/orangepi.png": "3583e3e27334d10336f388d8e59024e3",
"assets/assets/images/fablab.png": "397cac9f2b1c807e24abd653d58146a3",
"assets/assets/images/pygame.png": "34b7da79135ed498b0489cf4b87acc29",
"assets/assets/images/itc.png": "d3521e146da0e9d05a54499aa96f24a9",
"assets/assets/images/robocon_2026.png": "13fd211ec76a1212792bf3f1cf5e44a6",
"assets/assets/images/cpp.png": "0b849c72f38362fe12072a4916660013",
"assets/assets/images/github.png": "a9e8c39738d4a44530cb482d05e704a6",
"assets/assets/images/opencv.png": "1024332304613ab45c7da5ee4bb94b40",
"assets/assets/images/esp32.png": "273e99d5e7f3f3993a8f725b065f91de",
"assets/assets/images/folder_cyan.png": "dc0eba9d1dd50b286cfc5a4905c06b4c",
"assets/assets/images/dclab.png": "54085cd43b77182db622a2b8bfe35ad7",
"assets/assets/images/flutterflow.png": "9262c80d25eeb3ca7e7f8b2d13c8beb1",
"assets/assets/images/android.png": "d083412569b999bc7781dfb074001167",
"assets/assets/images/folder_grey.png": "d938c9ad3fd4bb8be6a8dd4249a69447",
"assets/assets/images/huggingface.png": "d9035ae7371b1814f9583f6b81d07252",
"assets/assets/images/folder_blue.png": "a616de17d9e74a41038782d8173a21a8",
"assets/assets/images/figma.png": "bcb2c6d5fbb2c425876359f40ec7688a",
"assets/assets/images/flutter.png": "9c762fd9bbcd0a09a78da1814a4860d6",
"assets/assets/images/flet.png": "cf74d5dd0f6468404818a92888a7cb43",
"assets/assets/images/temporary_pfp.jpg": "732edb0b8d7f68d6171f9cb79373062d",
"assets/assets/images/arduino.png": "92e762d51593d908d305c0cd0bce8358",
"assets/assets/images/script.png": "71277d4ff1a93e875aa168c28bbb21ef",
"assets/assets/images/widget.jpeg": "935f8538f21979c43f605fa7ef8b2608",
"assets/assets/images/java.png": "652fdb659a681116811612e0b9e25354",
"assets/assets/images/python.png": "d61bdd36708ce3d9ee7285ea7d2ce6d8",
"assets/assets/images/c.png": "b4dd4c5e18b3c0a0c35018f37c2b2f94",
"assets/assets/images/tkinter.png": "a9c255f90f11a11107564115923b6b23",
"assets/assets/images/javafx.png": "a76ef49c996d855b9fea3a9ce68675fc",
"assets/assets/images/matlab.png": "68a499eff36b5654ba8290e1ebd4a9f9",
"assets/assets/images/solidwork.png": "8b659de565dc8d8b9f652a80e077f20b",
"assets/assets/images/gtr.png": "5fbb5144ec23068dd0f42108b76397df",
"assets/assets/images/camflytech.png": "bcac2f702b685cf32aa70674a054bebb",
"assets/assets/images/git.png": "b019cb5448fe49e010b231f8e052bb1b",
"assets/assets/images/qt.png": "c682ff5fe82373fe9663e2941be14cdd",
"assets/assets/images/robocon_2025.png": "91b515a4dc84ff7522604831537b7a4c",
"assets/assets/images/ubuntu.png": "e4fb3523a0b1dd6e1d5fbe70027610e3",
"assets/assets/images/widget2.jpg": "88d2832f184154c48267bd45c8bf3869",
"assets/assets/images/telegram.png": "1f9996bb6985923bad31090ad97f4ba2",
"assets/assets/images/dart.png": "ae62b92f13758a541600d0790a3609ec",
"assets/assets/images/capcut.png": "11a822a1e0314777d1c654bdf163a44b",
"assets/assets/images/firebase.png": "c9fbd6e9e7f0d8d3d46b7843c0425ad0",
"assets/assets/images/folder_green.png": "f922ae01d718cdb3849c7358587203e3",
"assets/assets/images/gmail.png": "ccbdc1b12086164b134c6dddf40ca216",
"assets/assets/images/linux.png": "8f25b6561d48edb99a9c3af8bbec6b9a",
"assets/assets/images/android_studio.png": "112e8aa41375107bb88d81ec758d27b1",
"assets/assets/images/folder_yellow.png": "d8e7894305705a34030ca12855a9da04",
"assets/assets/images/raspberrypi.png": "04a1111c17d069e04d89ac3b4a48d0b6",
"assets/assets/gif/phone.gif": "d607298e8465717ade2d4d13d6ed2693",
"assets/assets/gif/anime_girl.gif": "c1dfb12609ccc124a8636a1090a5eba7",
"assets/AssetManifest.bin": "13d1a465848d0cf25f62e294fce914a5",
"assets/NOTICES": "68de64fcb30421b97e1032fd25a02cdd",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/AssetManifest.bin.json": "33fd28ba0e66049d84948898fd7735ce",
"manifest.json": "f7e49527d625a6f81d2795c558a50310",
"main.dart.js": "f858d5524d9336a75a7963873b97e3d1"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
