---
title: "Microsoft Graph Toolkit caching"
description: "Explaining how the Cache works and how to configure the options provided to developers"
ms.localizationpriority: medium
author: sebastienlevert
---

# Microsoft Graph Toolkit caching

The Microsoft Graph Toolkit supports caching of select Microsoft Graph API calls. Calls are cached per entity, such as people, contact, photo. This allows one component to retrieve the data and other components to reuse it without calling Microsoft Graph.

> [!TIP]
> For more information about which entities are cached by each component, see the documentation for that component.

Databases created by the Toolkit for caching are prefixed with `mgt-`. The data for each entity is stored in a separate object store. To inspect the cache, use the **Application** tab in the developer panel (F12 tools). In the **Storage** section, choose the **IndexedDB** tab.

![devtools indexedDB](../images/indexedDBpanel.png)

## Cache configuration

You can read and write the cache options through the static class `CacheService.config` object. The following example shows the format.

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
  },
  presence: {
    invalidationPeriod: number,
    isEnabled: boolean
  },
  groups: {
    invalidationPeriod: number,
    isEnabled: boolean
  },
  response: {
    invalidationPeriod: number,
    isEnabled: boolean
  },
  files: {
    invalidationPeriod: number,
    isEnabled: boolean
  },
  fileLists: {
    invalidationPeriod: number,
    isEnabled: boolean
  }
};
```

Individual cache invalidation periods are defaulted to `null` in the config object, and default to the general `defaultInvalidationPeriod` value of 3,600,000 ms (60 minutes). Any value passed into `config.x.invalidationPeriod` will override `defaultInvalidationPeriod`.

The presence store is the only exception, and has a default value of 300000 ms, or 5 minutes.

### Examples

To individual disable a store simply set the value of `isEnabled` in that store's config properties to false:
```JavaScript
import { CacheService } from '@microsoft/mgt-element';

CacheService.config.users.isEnabled = false;
```
Disabling the cache does **not** clear the cache.

Changing the invalidation period is similar:

```JavaScript
import { CacheService } from '@microsoft/mgt';

CacheService.config.users.invalidationPeriod = 1800000;
```

## Clearing the cache

The cache is automatically cleared when the user signs out. It can also be cleared manually.

To clear all the stores in the cache for the currently signed-in user, use the `clearCacheById()` method of the `CacheService` class, providing the user's cache ID. To retrieve the user's cache ID, call the `getCacheId` method from the `Providers` class.

```JavaScript
import { Providers } from '@microsoft/mgt';
import { CacheService } from '@microsoft/mgt-element';

const cacheId = await Providers.getCacheId();
await CacheService.clearCacheById(cacheId);
```

## Creating your own cache stores

If you want to create and populate your own cache stores for your custom components, use the `CacheService` static class.

```JavaScript
CacheService.getCache(schema: CacheSchema, storeName: String);
```
> **Note:** The `storeName` you reference in the call to `getCache()` must match one of the stores listed in your `CacheSchema` object.

The `CacheSchema` object is a dictionary with the key/value pairs.

```TypeScript
import { CacheSchema } from '@microsoft/mgt-element';
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

The following example shows the cache implementation.

```TypeScript
import { CacheItem, CacheSchema, CacheService, CacheStore } from '@microsoft/mgt-element';

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
