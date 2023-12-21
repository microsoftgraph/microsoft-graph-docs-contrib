---
title: "Upgrade to Microsoft Graph Toolkit v3"
description: "Upgrade guide to help you move from a previous version of the Toolkit to the most recent."
ms.localizationpriority: medium
author: sebastienlevert
---

# Upgrade to Microsoft Graph Toolkit v3

This article provides a summary of the breaking changes introduced in Microsoft Graph Toolkit v3 and how these changes might affect your solution.

## Changed the design framework to Fluent UI web components

To stay compliant and to align with the modern look and feel of Microsoft 365, Microsoft Graph Toolkit now uses Fluent UI [web components](/fluent-ui/web-components/). We recommend that you update some of your styling with the Fluent 2 design system.

Many of the design tokens provided to customize the look and feel of our components have changed. For details, see the CSS custom properties section of the articles for each component.

## Upgraded Microsoft Graph JS SDK from 2.x to 3.x

If you've been using the Microsoft Graph client via the `globalProvider`, it has been updated to 3.x. For details about how this might affect you, see [Microsoft Graph JS SDK upgrade guide](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/changelogs/v3-upgrade-guide.md).

## Upgraded from Lit 1.x to Lit 2.x

If you have been building custom components on top of the toolkit, review the [Lit upgrade guide](https://lit.dev/docs/v2/releases/upgrade/) for details about how this might affect you.

## Object structures changed and typings are available for events emitted by our components

In this release, the object structures of some events have changed to provide a better developer experience. All events have been accurately typed using the `CustomEvent<T>` generic type to help you deliver high-quality code. For details, see the Events section of the articles for each component.

## Permissions changed in the Teams channel picker

The `MgtTeamsChannelPickerConfig` has been removed and the Teams channel picker component now only uses `Team.ReadBasic.All` and `Channel.ReadBasic.All` scopes instead of the legacy `User.Read.All` and `Group.Read.All` scopes. This enables your application to use a least privileged approach.

## Removed multiple providers

In this release, multiple providers were removed to ensure your apps stay secure and provide the best experience possible for you users (support for conditional access, continuous access evaluation, and so on). The following providers were removed:

- Teams Provider
- Teams MSAL2 Provider
- MSAL Provider

## Next steps

- Update your solutions to the Toolkit version 3.
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt/issues).
