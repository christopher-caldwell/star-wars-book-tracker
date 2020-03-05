import React, { useState } from 'react';
import { createMuiTheme } from "@material-ui/core/styles";
import { ThemeProvider } from "@material-ui/styles";
import { ApolloProvider } from 'react-apollo'
import ApolloClient from 'graph-ql/'
import Router from "router/Router";
const persistedMode = JSON.parse(window.localStorage.getItem("persistedMode"));

function App() {
  const [themeMode, setThemeMode] = useState(persistedMode || "light");
  const theme = createMuiTheme({
    palette: {
      type: themeMode,
    }
  });
  return (
    <ApolloProvider client={ApolloClient}>
      <ThemeProvider theme={theme}>
        <div className="App">
          <Router currentTheme={themeMode} setThemeMode={setThemeMode} />
        </div>
      </ThemeProvider>
    </ApolloProvider>
  );
}

export default App;
