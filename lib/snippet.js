import React from "react";
import { CodeSurfer } from "mdx-deck-code-surfer";
import vsDark from "prism-react-renderer/themes/vsDark";

export const Snippet = ({
  lang = "elixir",
  showNumbers = false,
  dark = true,
  ...props
}) => (
  <CodeSurfer
    lang={lang}
    theme={vsDark}
    dark
    showNumbers={showNumbers}
    {...props}
  />
);

export default Snippet;
