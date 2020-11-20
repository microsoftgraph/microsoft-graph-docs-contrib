---
title: "Localizing the Microsoft Graph Toolkit Components"
description: "Use LocalizationHelper to translate component strings"
localization_priority: Normal
author: vogtn
---

# Localizing the Microsoft Graph Toolkit Components

Localization is a important aspect of application development to support users with various language requirements globally.

The Microsoft Graph Toolkit components can be localized so the user-interface reflects the desired linguistic experience.

## Use LocalizationHelper to add localized strings

All strings in the toolkit are not localized, but you can provide your own localized strings and manage different languages through the same process you use for localizing your app. To facilitate localization, the toolkit exposes the `LocalizationHelper` static class:

The strings can be referenced at a global level or per component (with the `_components:` selector), but global assignment of common properties will cascade unless further specified.

example:

```ts
import { LocalizationHelper } from "@microsoft/mgt";

LocalizationHelper.strings = {
  noResultsFound: "لم نجد أي قنوات",
  _components: {
    login: {
      signInLinkSubtitle: "login",
      signOutLinkSubtitle: "خروج",
    },
    "people-picker": {
      inputPlaceholderText: "ابدأ في كتابة الاسم",
      noResultsFound: "لم نجد أي قنوات", //collision with global defined noResultsFound will overwrite with local result
      loadingMessage: "...جار التحميل",
    },
    "teams-channel-picker": {
      inputPlaceholderText: "حدد قناة",
      noResultsFound: "local NoResultsFound Example",
      // loadingMessage: is default string "Loading..." for this example since not defined globally or locally
    },
    tasks: {
      removeTaskSubtitle: "delete",
      cancelNewTaskSubtitle: "canceltest",
      newTaskPlaceholder: "newTaskTest",
      addTaskButtonSubtitle: "addme",
    },
  },
};
```

## Strings

### Login

```ts
{
  signInLinkSubtitle: 'Sign In',
  signOutLinkSubtitle: 'Sign Out'
}
```

### People-Picker

```ts
{
  inputPlaceholderText: 'Start typing a name',
  noResultsFound: `We didn't find any matches.`,
  loadingMessage: 'Loading...'
}
```

### Teams-Channel-Picker

```ts
{
  inputPlaceholderText: 'Select a channel',
  noResultsFound: `We didn't find any matches.`,
  loadingMessage: 'Loading...'
}
```

### Tasks

```ts
{
  removeTaskSubtitle: 'Delete Task',
  cancelNewTaskSubtitle: 'cancel',
  newTaskPlaceholder: 'Task...',
  addTaskButtonSubtitle: 'Add'
}
```

### Tasks-Base

```ts
{
  removeTaskSubtitle: 'Delete Task',
  cancelNewTaskSubtitle: 'cancel',
  newTaskPlaceholder: 'Task...',
  addTaskButtonSubtitle: 'Add'
}
```

### Todo

```ts
{
  removeTaskSubtitle: 'Delete Task',
  cancelNewTaskSubtitle: 'cancel',
  newTaskPlaceholder: 'Task...',
  addTaskButtonSubtitle: 'Add'
}
```
