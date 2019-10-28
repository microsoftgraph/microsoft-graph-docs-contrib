---
title: "Microsoft Search indexing API overview"
description: "Learn about using the indexing API to index custom items or external files in the Microsoft Search service."
author: "snlraju-msft"
localization_priority: Priority
ms.prod: ""
scenarios: "getting-started"
---

# Microsoft Search indexing API overview (preview)

[Microsoft Search](/microsoftsearch/overview-microsoft-search) is the unified search capability in Microsoft 365 productivity apps and the broader Microsoft ecosystem. Over time Microsoft Search will be available in more and more apps across Microsoft 365.

<!-- markdownlint-disable MD026 -->
## Why integrate with Microsoft Search indexing?
<!-- markdownlint-enable MD026 -->

### Allow users to locate relevant information

Using [Microsoft Graph](overview.md), you can add new index items into the Microsoft Search service. You can expose search results to items in your own services, such as an internal Human Resources application, or a catalog of products. This allows users to search for items inside those different systems from within the Microsoft Search experience.

### Add files from external file repositories to search results

Microsoft Search by default includes files inside the Microsoft 365 ecosystem, including files in OneDrive for Business or SharePoint Online. You can use the indexing API to add files from other systems, such as internal file shares or cloud file repositories.

## API reference

Looking for the API reference for this service?

- [Search indexing API (preview)](/graph/api/resources/indexing-api-overview?view=graph-rest-beta)

## Next steps

- Learn about:
  - [Managing connections to the Microsoft Search service](search-index-manage-connections.md)
  - [Managing items in the index](search-index-manage-items.md)
- Download the indexing API Postman collection to try out the API.
- Download the indexing API sample from GitHub
