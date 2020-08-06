---
title: "Graph Call Caching"
description: "You can use the mgt-people-picker web component to search for a specified number of people and render the list of results via Microsoft Graph."
localization_priority: Normal
author: adchau
---

# Graph Call Caching

The Microsoft Graph Toolkit supports caching of some Graph API calls. Currently, the calls of the users, person, contact, and photo API are being cached by default in three IndexedDB stores.

Cache can be viewed through the developer panel under the "Application" tab, then naviagting on the "IndexedDB" tab under the "Storage" pane.

![devtools indexedDB](images/indexedDBpanel.png)

## Cache configuration

The cache options can be found in the static class `CacheService`, in the `config` property. It is formatted as such:

```TypeScript
let config = {
  defaultInvalidationPeriod: number,
  isEnabled: boolean,
  people: {
    invalidiationPeriod: number,
    isEnabled: boolean
  },
  photos: {
    invalidiationPeriod: number,
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

Changing the invalditation period is similarily simple:

```JavaScript
CacheService.config.users.invalidationPeriod = 1800000;
```

## Create your own

Cache stores are created using the public CacheService class. You can create your own with 
```JavaScript
CacheService.getCache(Schema: CacheSchema, Store: String);
```

CacheSchema object is a dictionary with key/value pairs:
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
 > Note: The store you reference in the call to getCache() must match one of the stores listed in your CacheSchema object


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
const cache = CacheService.getCache(cacheSchema, 'dogs');
```