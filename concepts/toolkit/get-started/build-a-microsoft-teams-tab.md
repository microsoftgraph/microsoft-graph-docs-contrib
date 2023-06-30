---
title: "Build a Microsoft Teams tab with the Microsoft Graph Toolkit"
description: "Get started building a Microsoft Teams tab using the Microsoft Graph Toolkit."
ms.localizationpriority: medium
author: sebastienlevert
---

# Build a Microsoft Teams tab with the Microsoft Graph Toolkit

This topic covers how to get started using the Microsoft Graph Toolkit in a Microsoft Teams solution. This guide is for a single page app without single sign-on (SSO) and does not require a backend. It uses the Teams Toolkit as the scaffolding system.

Building a tab involves the following steps:

1. Build a new Teams tab using React and Fluent UI with the Teams Toolkit.
1. Replace the content of the `Tab.tsx` file.
1. Initialize the TeamsFx Provider.
1. Add components.
1. Test your app.

## Build a new Teams tab using React and Fluent UI with the Teams Toolkit

To get started, see [Create a new Teams project](/microsoftteams/platform/toolkit/create-new-project) to get your tab up and running. When prompted to choose the capabilities of your new App, select **React with Fluent UI**. When prompted to choose a **Programming Language**, select **TypeScript**. For the rest, go through the regular path of the wizard.

---

## Replace the content of the `Tab.tsx` file

Remove the contents of the `/src/components/Tab.tsx` file and use the following code. This will help with focusing on the goal to achieve.

```tsx
import { useContext } from "react";
import { TeamsFxContext } from "./Context";
import React from "react";
import { applyTheme } from "@microsoft/mgt-react";
import { Button } from "@fluentui/react-components";

export default function Tab() {
  const { themeString } = useContext(TeamsFxContext);
  const [loading, setLoading] = React.useState<boolean>(false);
  const [consentNeeded, setConsentNeeded] = React.useState<boolean>(false);

  React.useEffect(() => {
    applyTheme(themeString === "default" ? "light" : "dark");
  }, [themeString]);

  return (
    <div>
      {consentNeeded && (
        <>
          <p>
            Click below to authorize button to grant permission to using
            Microsoft Graph.
          </p>
          <Button appearance="primary">Authorize</Button>
        </>
      )}

      {!consentNeeded && <></>}
    </div>
  );
}
```

---

## Initialize the TeamsFx Provider

Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers/providers.md). The [TeamsFx Provider](../providers/teamsfx.md) handles all the logic and interactions that need to be implemented with the Teams SDK to authenticate the user.

To initialize the provider in your JavaScript code, add the following code in the `imports` section of your file:

```tsx
import { Providers, ProviderState } from "@microsoft/mgt-react";
import { TeamsFxProvider } from "@microsoft/mgt-teamsfx-provider";
import {
  TeamsUserCredential,
  TeamsUserCredentialAuthConfig,
} from "@microsoft/teamsfx";

const authConfig: TeamsUserCredentialAuthConfig = {
  clientId: process.env.REACT_APP_CLIENT_ID!,
  initiateLoginEndpoint: process.env.REACT_APP_START_LOGIN_PAGE_URL!,
};

const scopes = ["User.Read", "Calendars.Read"];
const credential = new TeamsUserCredential(authConfig);
const provider = new TeamsFxProvider(credential, scopes);
Providers.globalProvider = provider;
```

Within the `Tab` component, before the `React.useEffect` statement, add the following:

```tsx
React.useEffect(() => {
  const init = async () => {
    try {
      await credential.getToken(scopes);
      Providers.globalProvider.setState(ProviderState.SignedIn);
    } catch (error) {
      setConsentNeeded(true);
    }
  };

  init();
}, []);

const consent = async () => {
  setLoading(true);
  await credential.login(scopes);
  Providers.globalProvider.setState(ProviderState.SignedIn);
  setLoading(false);
  setConsentNeeded(false);
};
```

Replace the `<Button>` by the following code:

```tsx
<Button appearance="primary" disabled={loading} onClick={consent}>
  Authorize
</Button>
```

---

## Add components

Now, you're ready to add any of the Microsoft Graph Toolkit components. The first components you will likely want to add are a person and an agenda. First, update your `imports` for `@microsoft/mgt-react`:

```tsx
import { Agenda, Person, applyTheme } from "@microsoft/mgt-react";
```

Add your component between the `<></>` at the bottom of the file:

```tsx
<Person personQuery="me" />
<Agenda></Agenda>
```

## Test your app

1. Press `F5` or use the `Run and Debug Activity Panel` in Visual Studio Code.
1. Select a target Microsoft 365 application where the personal tabs can run: **Debug in Teams**, **Debug in Outlook**, or **Debug in the Microsoft 365 app**, and choose **Run and Debug**.

> **Note**
> If you receive the HTTPS error when running your tab `It looks like the webpage at **https://localhost:53000/index.html#/tab** might be having issues, or it may have moved permanently to a new web address`, see the following articles:
>
> - [What to do if I do not want to install the development certificate?](https://github.com/OfficeDev/TeamsFx/blob/dev/docs/fx-core/localdebug-help.md#what-to-do-if-i-do-not-want-to-install-the-development-certificate) (Windows)
> - [What to do if I do not want to install the development certificate?](https://github.com/OfficeDev/TeamsFx/blob/dev/docs/fx-core/localdebug-help.md#what-to-do-if-i-do-not-want-to-install-the-development-certificate) (WSL)

## Next Steps

- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Microsoft Q&A](/answers/topics/microsoft-graph-toolkit.html).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt/issues).
- Check out the [Microsoft TeamsFx samples](https://github.com/OfficeDev/TeamsFx-Samples).
