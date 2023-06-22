---
title: "Microsoft Graph Toolkit upgrade guide"
description: "Upgrade guide to help you move from a previous version of the Toolkit to the most recent."
ms.localizationpriority: medium
author: sebastienlevert
---

# Microsoft Graph Toolkit upgrade guide

This article provides a guide for upgrading Microsoft Graph Toolkit code to its latest version.

## Microsoft Graph Toolkit v3

### Moved our design framework to Fluent UI Web Components

To stay compliant and to align with the modern look and feel of Microsoft 365, we are taking advantage of the [web components](/fluent-ui/web-components/) from the Fluent UI team. Please use their documentation to update some of your styling with the Fluent 2 design system.

We also changed many of the design tokens we offer to customize the look and feel of our components. Please refer to the "CSS custom properties" section of the article for each component.

### Upgraded our Graph JS SDK from 2.x to 3.x

If you have been using our Graph client via the `globalProvider`, it has been updated to 3.x and this might affect you. Please review the potential impact on the [Graph JS SDK upgrade guide](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/changelogs/v3-upgrade-guide.md).

### Upgraded from Lit 1.x to Lit 2.x

If you have been building custom components on top of the Toolkit, this might affect you. Please review the potential impact on the [Lit upgrade guide](https://lit.dev/docs/v2/releases/upgrade/).

### Object structures changed and typings are available for events emitted by our components

In this release, we changed some of our object structures to provide a better developer experience. We also introduced typed events to help you deliver high-quality code. Please refer to the "Events" section of the article for each component.

### Permissions changed in the Teams channel picker

We removed the `MgtTeamsChannelPickerConfig` and moved from `User.Read.All` and `Group.Read.All` to only use the `Team.ReadBasic.All` and `Channel.ReadBasic.All` scopes in the Teams channel picker component. This enables your application to use a least priviledged approach.

### Removed multiple providers

In this release, we removed multiple providers to ensure your apps stay secure and provide the best experience possible for you users (support for conditional access, continuous access evaluation, etc.). The following providers were removed:

- Teams Provider
- Teams MSAL2 Provider
- MSAL Provider

## Next steps

- Update your solutions to the latest Toolkit version <img alt="Microsoft Graph Toolkit latest version" src="https://img.shields.io/npm/v/@microsoft/mgt/latest.svg">
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt/issues).
