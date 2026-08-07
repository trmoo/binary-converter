import { defineConfig } from "vite";

// 이 폴더(root)의 index.html 이 개발 서버와 빌드의 메인 페이지가 된다.
export default defineConfig({
  // 상대 경로로 빌드해야 GitHub Pages 하위 주소(/binary-converter/)에서도 자원이 열린다
  base: "./",
  server: {
    port: 5173,
    open: "/index.html",   // npm start 하면 메인 페이지가 바로 열린다
  },
  build: {
    outDir: "dist",
    emptyOutDir: true,
  },
});
