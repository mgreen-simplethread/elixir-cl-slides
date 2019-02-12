import React from "react";
import { CodeSurfer } from "mdx-deck-code-surfer";
import { duotoneDark as theme } from "prism-react-renderer/themes/vsDark";

export const Snippet = ({
  lang = "elixir",
  showNumbers = false,
  dark = true,
  ...props
}) => (
  <CodeSurfer
    lang={lang}
    theme={theme}
    dark
    showNumbers={showNumbers}
    {...props}
  />
);

export default Snippet;
