---
title: "Microsoft Graph Toolkit Caching"
description: "Explaining how the Cache works and how to configure the options provided to developers"
localization_priority: Normal
author: adchau
---

# Caching

The Microsoft Graph Toolkit supports caching of select Graph API calls. Currently, the calls of the users, person, contact, and photo endpoints are being cached by default in three IndexedDB stores.

You can view the cache through the developer panel under the "Application" tab, then naviagting on the "IndexedDB" tab under the "Storage" pane.

![devtools indexedDB](images/indexedDBpanel.png)

## Cache configuration

You can read and write the cache options through the static class `CacheService.config` object. It is formatted as such:

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
  users: {
    invalidationPeriod: number,
    isEnabled: boolean
  }
};
```

Individual cache invalidation periods are defaulted to `null` in the config object, and defaults to the general `defaultInvalidationPeriod` value of 3,600,000 ms (60 minutes). Any value passed into `config.x.invalidationPeriod` will override `defaultInvalidationPeriod`.

### Examples

To individual disable a store simply set the value of `isEnabled` in that store's config properties to false:
```JavaScript
import { CacheService } from '@microsoft/mgt';

CacheService.config.users.isEnabled = false;
```
Disabling the cache does **not** clear the cache.

Changing the invalditation period is similar:

```JavaScript
import { CacheService } from '@microsoft/mgt';

CacheService.config.users.invalidationPeriod = 1800000;
```

## Clearing the Cache

The cache is automatically cleared upon user logout, but can be done manually if desired:

The clear all the stores in the cache, the `clearCaches()` method of the CacheService class will clear every store maintained by the CacheService.

```JavaScript
import { CacheService } from '@microsoft/mgt';

CacheService.clearCaches();
```

## Creating your own cache stores

If you wish to create and populate your own cache stores for your custom components.

Cache stores are created using the CacheService static class. You can create your own with:
```JavaScript
CacheService.getCache(schema: CacheSchema, storeName: String);
```
> Note: The storeName you reference in the call to getCache() must match one of the stores listed in your CacheSchema object

CacheSchema object is a dictionary with the key/value pairs:
```TypeScript
import { CacheSchema } from '@microsoft/mgt';
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

Sample of cache implementation:

```TypeScript
import { CacheItem, CacheSchema, CacheService, CacheStore } from '@microsoft/mgt';

const cacheSchema: CacheSchema = {
  name: 'users',
  stores: {
    users: {},
    usersQuery: {}
  },
  version: 1
};

interface CacheUser extends CacheItem {
  user?: string;
}

// retrieves invalidation time from cache config
const getUserInvalidationTime = (): number =>
  CacheService.config.users.invalidationPeriod || CacheService.config.defaultInvalidationPeriod;

// checks for if cache is enabled
const usersCacheEnabled = (): boolean => CacheService.config.users.isEnabled && CacheService.config.isEnabled;

// declare the desired cache store
let cache: CacheStore<CacheUser>

// check if the cache is enabled
if (usersCacheEnabled()) {
  cache = CacheService.getCache<CacheUser>(cacheSchema, 'users');
  const user = await cache.getValue(query);

  // check if an item is retrieved, and if it's not expired
  if (user && getUserInvalidationTime() > Date.now() - user.timeCached) {
    return JSON.parse(user.user);
  }
}

// graph call
const graphRes = graph
  .api('me')
  .middlewareOptions(prepScopes('user.read'))
  .get();

// store graph result into the cache if cache is enabled
if (usersCacheEnabled()) {
  cache.putValue(userId, { user: JSON.stringify(graphRes) });
}
```
