---
title: "Install a Microsoft Graph SDK"
description: "Find instructions for installing the Microsoft Graph SDKs for .NET, Go, Java, JavaScript, PHP, PowerShell, and Python."
ms.localizationpriority: medium
author: MichaelMainer
---

# Install a Microsoft Graph SDK

Microsoft Graph SDKs can be included in your projects via GitHub and popular platform package managers. This article describes how to install a Microsoft Graph SDK into your project.

SDKs are available in the following languages:

- [.NET](#install-the-microsoft-graph-net-sdk)
- [Go](#install-the-microsoft-graph-go-sdk)
- [Java](#install-the-microsoft-graph-java-sdk)
- [JavaScript](#install-the-microsoft-graph-javascript-sdk)
- [PHP](#install-the-microsoft-graph-php-sdk)
- [PowerShell](#install-the-microsoft-graph-powershell-sdk)
- [Python](#install-the-microsoft-graph-python-sdk)

## Install the Microsoft Graph .NET SDK

The Microsoft Graph .NET SDK is included in the following NuGet packages:

- [Microsoft.Graph](https://github.com/microsoftgraph/msgraph-sdk-dotnet): Contains the models and request builders for accessing the `v1.0` endpoint with the fluent API. Microsoft.Graph has a dependency on Microsoft.Graph.Core.
- [Microsoft.Graph.Beta](https://github.com/microsoftgraph/msgraph-beta-sdk-dotnet): Contains the models and request builders for accessing the `beta` endpoint with the fluent API. Microsoft.Graph.Beta has a dependency on Microsoft.Graph.Core.
- [Microsoft.Graph.Core](https://github.com/microsoftgraph/msgraph-sdk-dotnet-core): The core library for making calls to Microsoft Graph.

To install the Microsoft.Graph packages into your project, you can use the [dotnet CLI](/nuget/quickstart/install-and-use-a-package-using-the-dotnet-cli), the [Package Manager UI in Visual Studio](/nuget/quickstart/install-and-use-a-package-in-visual-studio#nuget-package-manager) or the [Package Manager Console in Visual Studio](/nuget/quickstart/install-and-use-a-package-in-visual-studio#package-manager-console). The following commands install the Microsoft.Graph and Microsoft.Graph.Core libraries. Microsoft.Graph.Core is installed as a dependency of Microsoft.Graph.

### dotnet CLI

```dotnetcli
dotnet add package Microsoft.Graph
```

### Package Manager Console

```powershell
Install-Package Microsoft.Graph
```

## Install the Microsoft Graph Go SDK

The Microsoft Graph Go SDK is included in the following packages:

- [Microsoft Graph SDK for Go](https://github.com/microsoftgraph/msgraph-sdk-go): Contains the models and request builders for accessing the `v1.0` endpoint with the fluent API.
- [Microsoft Graph Beta SDK for Go](https://github.com/microsoftgraph/msgraph-beta-sdk-go): Contains the models and request builders for accessing the `beta` endpoint with the fluent API.
- [Microsoft Graph Core SDK for Go](https://github.com/microsoftgraph/msgraph-sdk-go-core): The core library for making calls to Microsoft Graph.

```Shell
go get github.com/microsoftgraph/msgraph-sdk-go
go get github.com/Azure/azure-sdk-for-go/sdk/azidentity
```

## Install the Microsoft Graph Java SDK

The Microsoft Graph Java SDK is included in the following packages:

- [microsoft-graph](https://github.com/microsoftgraph/msgraph-sdk-java): Contains the models and request builders for accessing the `v1.0` endpoint with the fluent API.
- [microsoft-graph-beta](https://github.com/microsoftgraph/msgraph-beta-sdk-java): Contains the models and request builders for accessing the `beta` endpoint with the fluent API.
- [microsoft-graph-core](https://github.com/microsoftgraph/msgraph-sdk-java-core): The core library for making calls to Microsoft Graph.

To install the Microsoft Graph Java SDK, you can use one of these two options:

- Use Gradle to install the Microsoft Graph Java SDK. Add the repository and a compile dependency for microsoft-graph to your project's build.gradle:

  ```gradle
    repository {
        mavenCentral()
    }

    dependency {
        // Include the sdk as a dependency
        implementation 'com.microsoft.graph:microsoft-graph:6.+'
        // Beta
        implementation 'com.microsoft.graph:microsoft-graph-beta:6.+'
        // Include Azure identity for authentication
        implementation 'com.azure:azure-identity:1.+'
    }
  ```

- Use Maven to install the Microsoft Graph Java SDK. Add the dependency in the `dependencies` element in pom.xml:

  ```xml
    <dependency>
        <groupId>com.microsoft.graph</groupId>
        <artifactId>microsoft-graph</artifactId>
        <version>[6.0,)</version>
    </dependency>
    <dependency>
        <groupId>com.microsoft.graph</groupId>
        <artifactId>microsoft-graph-beta</artifactId>
        <version>[6.0,)</version>
    </dependency>
    <dependency>
        <groupId>com.azure</groupId>
        <artifactId>azure-identity</artifactId>
        <version>[1.11,)</version>
    </dependency>
  ```

## Install the Microsoft Graph JavaScript SDK

The Microsoft Graph JavaScript SDK is included in the following packages:

- @microsoft/microsoft-graph-client ([npm](https://www.npmjs.com/package/@microsoft/microsoft-graph-client)): The core library for making calls to Microsoft Graph.
- @microsoft/microsoft-graph-types ([npm](https://www.npmjs.com/package/@microsoft/microsoft-graph-types)): The TypeScript types for the Microsoft Graph entities.

Use [npm](https://www.npmjs.com) to install the Microsoft Graph JavaScript SDK:

```Shell
npm install @microsoft/microsoft-graph-client --save
npm install @microsoft/microsoft-graph-types --save-dev
```

## Install the Microsoft Graph PHP SDK

The [Microsoft Graph PHP SDK](https://github.com/microsoftgraph/msgraph-sdk-php) is available from [packagist.org](https://packagist.org/packages/microsoft/microsoft-graph) and can be installed in the following ways:

- Use composer to install the Microsoft Graph PHP SDK manually:

    ```Shell
    composer require microsoft/microsoft-graph
    ```

- Use composer.json to install the Microsoft Graph PHP SDK:

    ```json
    {
        "require": {
            "microsoft/microsoft-graph": "^2.0.0"
        }
    }
    ```

## Install the Microsoft Graph PowerShell SDK

All the modules are published on [PowerShell Gallery](https://www.powershellgallery.com/packages/Microsoft.Graph). To install:

``` powershell
Install-Module Microsoft.Graph
```

If you're upgrading from the preview modules, run `Install-Module` with `AllowClobber` and `Force` parameters to avoid command name conflicts:

``` powershell
Install-Module Microsoft.Graph -AllowClobber -Force
```

## Install the Microsoft Graph Python SDK

The [Microsoft Graph Python SDK](https://github.com/microsoftgraph/msgraph-sdk-python) is available on [PyPI](https://pypi.org/).

```py
pip install msgraph-sdk
```

## Related content

- For more information, see the SDK [design requirements documentation](https://github.com/microsoftgraph/msgraph-sdk-design).
- For a list of samples for Microsoft Graph, see the [Microsoft Graph resources page](https://developer.microsoft.com/graph/gallery/?filterBy=Samples).
- For step-by-step training for creating a Microsoft Graph app, see the [Microsoft Graph tutorials](/graph/tutorials).
