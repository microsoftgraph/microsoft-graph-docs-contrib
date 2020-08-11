---
title: "Graph Call Caching"
description: "Explaining how the Cache works and how to configure the options provided to developers"
localization_priority: Normal
author: adchau
---

# Graph Call Caching

The Microsoft Graph Toolkit supports caching of select Graph API calls. Currently, the calls of the users, person, contact, and photo endpoints are being cached by default in three IndexedDB stores.

You can view the cache through the developer panel under the "Application" tab, then naviagting on the "IndexedDB" tab under the "Storage" pane.

![devtools indexedDB](images/indexedDBpanel.png)

## Cache configuration

You can find the cache options in the static class `CacheService`, in the `config` property. It is formatted as such:

```TypeScript
let config = {
  defaultInvalidationPeriod: number,
  isEnabled: boolean,
  people: {
    invalidationPeriod: number,
    isEnabled: boolean
  },
  photos: {
    invalidationPeriod: number,
    isEnabled: boolean
  },
  ...
};
```

Cache invalidation period is represented in milliseconds, and has a default value of 3600000ms, or 60 minutes.

|  Store  |  Default Invalidation Period  |
| :-- | :-- |
| Users | 60min |
| People | 60min |
| Photos | 60min |

### Examples

To individual disable a store simply set the value of `isEnabled` in that store's config properties to false:
```JavaScript
CacheService.config.users.isEnabled = false;
```

Changing the invalditation period is similar:

```JavaScript
CacheService.config.users.invalidationPeriod = 1800000;
```

## Clearing the Cache

The cache is automatically cleared upon user logout, but can be done manually in two different ways:

### Clearing all stores:

The clear all the stores in the cache, the `clearCacheStores()` method of the CacheService class will clear every store maintained by the CacheService.

### Clearing individual stores:

If you want to instead clear an individual store, the CacheStore class provides a `clearCache()` method that will only clear that store.

## Creating your own cache stores

Cache stores are created using the CacheService static class. You can create your own with 
```JavaScript
CacheService.getCache(Schema: CacheSchema, Store: String);
```

CacheSchema object is a dictionary with the key/value pairs:
```TypeScript
const cacheSchema: CacheSchema = {
  name: string,
  stores: {
    store1: {},
    store2: {},
    ...
  },
  version: number
};
```

### Example

```JavaScript
const cacheSchema = {
  name: 'myCache',
  stores: {
    dogs: {},
    cats: {},
    giraffes: {},
  },
  version: 1
};

// Each CacheStore object must store a sub-interface of CacheItem, which by default provides
// a timeCached property
interface DogCacheItem extends CacheItem {
  age: number;
  breed: string;
  color: string;
  owner: string;
}

// instantiate the desired cache store
const cache = CacheService.getCache<DogCacheItem>(cacheSchema, 'dogs');

// insert an item
cache.putValue('dog1', {age: 6, breed: 'German Shepard', color: 'brown', owner: 'Beth Pan'});

// retrieve an item from the cache
const bethsDog = cache.getValue('dog1');

```
 > Note: The store you reference in the call to getCache() must match one of the stores listed in your CacheSchema object