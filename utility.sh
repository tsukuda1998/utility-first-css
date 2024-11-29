#!/bin/bash

# ディレクトリ構成を作成
mkdir -p css/{base,components,layouts,utilities}

# ファイルを作成
touch css/base/base.css css/base/reset.css

touch css/components/buttons.css css/components/cards.css css/components/modals.css

touch css/layouts/footer.css css/layouts/grid.css css/layouts/header.css

touch css/utilities/animations.css css/utilities/colors.css css/utilities/flex.css css/utilities/grid.css css/utilities/spacing.css css/utilities/typography.css

touch css/main.css

# 各ファイルに初期のスタイルを記述

# base/reset.css
echo "/* reset.css */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}" > css/base/reset.css

# base/base.css
echo "/* base.css */
html, body {
  height: 100%;
  font-family: sans-serif;
  color: #1a202c; /* Tailwindのテキストカラー */
}

a {
  color: inherit;
  text-decoration: none;
}" > css/base/base.css

# components/buttons.css
echo "/* buttons.css */
.btn {
  display: inline-block;
  padding: 0.5rem 1rem; /* px-4 py-2 */
  border-radius: 4px; /* 0.25remから4pxに変更 */
  text-align: center;
  cursor: pointer;
}

.btn-primary {
  background-color: #3b82f6; /* bg-blue-500 */
  color: #ffffff; /* text-white */
}

.btn-primary:hover {
  background-color: #2563eb; /* bg-blue-600 */
}" > css/components/buttons.css

# components/cards.css
echo "/* cards.css */
.card {
  border: 1px solid #e5e7eb; /* border-gray-200 */
  border-radius: 8px; /* 0.25remから8pxに変更 */
  padding: 1rem; /* p-4 */
  background-color: #ffffff; /* bg-white */
}

.card-header {
  font-size: 1.25rem; /* text-xl */
  margin-bottom: 0.5rem; /* mb-2 */
}

.card-body {
  font-size: 1rem; /* text-base */
}" > css/components/cards.css

# components/modals.css
echo "/* modals.css */
.modal {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: none;
  align-items: center;
  justify-content: center;
}

.modal.active {
  display: flex;
}

.modal-content {
  background-color: #ffffff; /* bg-white */
  padding: 1rem; /* p-4 */
  border-radius: 8px; /* 0.25remから8pxに変更 */
}" > css/components/modals.css

# layouts/footer.css
echo "/* footer.css */
.footer {
  background-color: #f9fafb; /* bg-gray-50 */
  padding: 1rem; /* p-4 */
  text-align: center;
  font-size: 0.875rem; /* text-sm */
}" > css/layouts/footer.css

# layouts/grid.css
echo "/* grid.css */
.container {
  width: 100%;
  margin-right: auto;
  margin-left: auto;
  padding-right: 1rem; /* pr-4 */
  padding-left: 1rem;  /* pl-4 */
}

.row {
  display: flex;
  flex-wrap: wrap;
}

.col-6 {
  width: 50%;
}

@media (min-width: 640px) {
  .container {
    max-width: 640px;
  }
}

@media (min-width: 768px) {
  .container {
    max-width: 768px;
  }
}

@media (min-width: 1024px) {
  .container {
    max-width: 1024px;
  }
}" > css/layouts/grid.css

# layouts/header.css
echo "/* header.css */
.header {
  background-color: #f9fafb; /* bg-gray-50 */
  padding: 1rem; /* p-4 */
}

.header .logo {
  font-size: 1.5rem; /* text-2xl */
  font-weight: 700; /* font-bold */
}" > css/layouts/header.css

# utilities/animations.css
echo "/* animations.css */
.animate-fade-in {
  animation: fade-in 0.5s ease-in-out forwards;
}

@keyframes fade-in {
  from { opacity: 0; }
  to { opacity: 1; }
}" > css/utilities/animations.css

# utilities/colors.css
echo "/* colors.css */
.text-white { color: #ffffff; }
.text-black { color: #000000; }
.text-gray-500 { color: #6b7280; }
.bg-white { background-color: #ffffff; }
.bg-black { background-color: #000000; }
.bg-gray-100 { background-color: #f3f4f6; }" > css/utilities/colors.css

# utilities/flex.css
echo "/* flex.css */
.flex { display: flex; }
.inline-flex { display: inline-flex; }
.flex-row { flex-direction: row; }
.flex-col { flex-direction: column; }
.justify-start { justify-content: flex-start; }
.justify-center { justify-content: center; }
.justify-end { justify-content: flex-end; }
.items-start { align-items: flex-start; }
.items-center { align-items: center; }
.items-end { align-items: flex-end; }" > css/utilities/flex.css

# utilities/grid.css
echo "/* grid.css */
.grid { display: grid; }
.grid-cols-1 { grid-template-columns: repeat(1, minmax(0, 1fr)); }
.grid-cols-2 { grid-template-columns: repeat(2, minmax(0, 1fr)); }
.grid-cols-3 { grid-template-columns: repeat(3, minmax(0, 1fr)); }
.grid-cols-4 { grid-template-columns: repeat(4, minmax(0, 1fr)); }
.gap-1 { gap: 0.25rem; }
.gap-2 { gap: 0.5rem; }
.gap-3 { gap: 0.75rem; }
.gap-4 { gap: 1rem; }" > css/utilities/grid.css

# utilities/spacing.css
echo "/* spacing.css */
.m-0 { margin: 0px; }
.m-1 { margin: 0.25rem; }
.m-2 { margin: 0.5rem; }
.m-3 { margin: 0.75rem; }
.m-4 { margin: 1rem; }
.p-0 { padding: 0px; }
.p-1 { padding: 0.25rem; }
.p-2 { padding: 0.5rem; }
.p-3 { padding: 0.75rem; }
.p-4 { padding: 1rem; }" > css/utilities/spacing.css

# utilities/typography.css
echo "/* typography.css */
.text-xs { font-size: 0.75rem; }
.text-sm { font-size: 0.875rem; }
.text-base { font-size: 1rem; }
.text-lg { font-size: 1.125rem; }
.text-xl { font-size: 1.25rem; }
.font-thin { font-weight: 100; }
.font-light { font-weight: 300; }
.font-normal { font-weight: 400; }
.font-medium { font-weight: 500; }
.font-bold { font-weight: 700; }
.font-extrabold { font-weight: 800; }" > css/utilities/typography.css

# main.css
echo "/* main.css */
@import './base/reset.css';
@import './base/base.css';

@import './utilities/colors.css';
@import './utilities/spacing.css';
@import './utilities/typography.css';
@import './utilities/flex.css';
@import './utilities/grid.css';
@import './utilities/animations.css';

@import './components/buttons.css';
@import './components/cards.css';
@import './components/modals.css';

@import './layouts/header.css';
@import './layouts/footer.css';
@import './layouts/grid.css';" > css/main.css

# 完了メッセージ
echo "CSSディレクトリ構成とファイルが作成されました。"

