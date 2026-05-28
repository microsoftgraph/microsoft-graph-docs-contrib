---
title: "Overview of the user configuration API in Microsoft Graph (preview)"
description: "Use the user configuration API in Microsoft Graph to build solutions that store and retrieve per-folder configuration data alongside Exchange Online mailbox content."
author: "cparker-msft"
ms.localizationpriority: high
ms.subservice: "outlook"
ms.custom: scenarios:getting-started
doc_type: conceptual
ms.date: 12/08/2025
---

# Overview of the user configuration API in Microsoft Graph (preview)

The user configuration API in Microsoft Graph lets your application store and retrieve per-folder configuration data alongside the contents of an Exchange Online mailbox. A [userConfiguration](/graph/api/resources/userconfiguration?view=graph-rest-beta&preserve-view=true) object — also known as a folder associated item (FAI) — is associated with a specific mail folder and identified by a key that is unique within that folder. Each object is scoped to a single folder rather than the mailbox as a whole, which lets your app keep its state close to the content it relates to.

The API gives your app full create, read, update, and delete control over **userConfiguration** objects, and supports multiple payload styles so you can store the format that best fits your scenario: arbitrary binary data, serialized XML, or strongly-typed key-value pairs.

## Why integrate with the user configuration API?

### Store per-folder application state and settings

Many applications need a reliable place to keep settings or state that pertains to a specific mail folder — for example, the last-synchronized item ID for an Inbox synchronization tool, view preferences for a custom folder, or feature flags scoped to a folder. The user configuration API gives your app a dedicated, mailbox-resident storage location for this kind of data so you don't have to maintain a separate external store.

### Persist app metadata alongside mailbox content

Because user configuration objects live inside the mailbox, the data is stored close to the content it relates to and is protected by the same access controls as the rest of the user's mailbox content. This makes the API a good fit for app metadata that should remain associated with a specific folder.

### Choose the payload style that fits your data

The **userConfiguration** resource supports three payload properties so you can pick the right shape for your scenario:

- Use **binaryData** for arbitrary binary content.
- Use **xmlData** for serialized XML.
- Use **structuredData** to store typed key-value pairs without serializing your own format. The supported value types are modeled by the [structuredDataEntry](/graph/api/resources/structureddataentry?view=graph-rest-beta&preserve-view=true) and [structuredDataEntryTypedValue](/graph/api/resources/structureddataentrytypedvalue?view=graph-rest-beta&preserve-view=true) complex types.

A single **userConfiguration** object can carry any combination of these properties, so you can mix payload styles as your app evolves.

## API reference

Looking for the API reference for this service? See the [userConfiguration](/graph/api/resources/userconfiguration?view=graph-rest-beta&preserve-view=true) resource type and its supported methods.

## Next steps

- Explore the [userConfiguration](/graph/api/resources/userconfiguration?view=graph-rest-beta&preserve-view=true) resource type and its supported methods (Create, Get, Update, Delete).
- Try the user configuration API in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
