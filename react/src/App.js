import React, { useState } from 'react';
import { createMuiTheme } from "@material-ui/core/styles";
import { ThemeProvider } from "@material-ui/styles";
import Router from "router/Router";
import Header from 'components/header/Header'
const persistedMode = JSON.parse(window.localStorage.getItem("persistedMode"));

function App() {
  const [themeMode, setThemeMode] = useState(persistedMode || "light");
  const theme = createMuiTheme({
    palette: {
      type: themeMode,
    }
  });
  return (
    <ThemeProvider theme={theme}>
      <div className="App">
        <Header/>
        <Router currentTheme={themeMode} setThemeMode={setThemeMode} />
      </div>
    </ThemeProvider>
  );
}

export default App;
