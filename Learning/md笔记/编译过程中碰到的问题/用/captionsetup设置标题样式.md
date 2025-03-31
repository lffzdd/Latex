`\captionsetup` 是 LaTeX `caption` 宏包提供的一个命令，用于全局或局部设置 **标题（caption）** 的格式，包括字体、标签格式、对齐方式等。

---

## **基本语法**

```latex
\captionsetup{选项1=值, 选项2=值, ...}
```

- 作用范围：
    - **全局设置**（在 `\begin{document}` 之后使用）
    - **局部设置**（在 `\caption` 或 `\subfloat` 之前使用）

---

## **常见选项**

| 选项                | 作用            | 典型值                                                  |
|-------------------|---------------|------------------------------------------------------|
| `labelformat`     | 设定标签的格式       | `empty`（无编号）、`simple`（纯数字）、`parens`（括号）              |
| `labelsep`        | 设定标签和标题之间的分隔符 | `colon`（冒号）、`space`（空格）、`period`（句号）                 |
| `font`            | 设定标题字体        | `small`、`footnotesize`、`it`（斜体）                      |
| `justification`   | 设定标题对齐方式      | `raggedright`（左对齐）、`centering`（居中）、`justified`（两端对齐） |
| `singlelinecheck` | 单行标题是否居中      | `true` / `false`                                     |

---

## **示例**

### **1. 让所有 `figure` 的标题居中**

```latex
\captionsetup[figure]{justification=centering}
```

---

### **2. 局部取消编号**

```latex
\captionsetup{labelformat=empty} % 取消编号
\caption{This is a caption without numbering.}
```

---

### **3. 只对 `subfigure` 取消编号**

```latex
\captionsetup[subfigure]{labelformat=empty}
```

---

### **4. 修改编号格式**

```latex
\captionsetup{labelformat=parens} % 让编号变成 (1), (2), ...
```

---

### **5. 修改字体**

```latex
\captionsetup{font=small, labelfont=bf} % 让标题变小，标签加粗
```

---

### **6. 设置 `table` 的标题左对齐**

```latex
\captionsetup[table]{justification=raggedright, singlelinecheck=false}
```

---

## **总结**

`\captionsetup` 是一个 **灵活的工具**，可以用来调整 LaTeX 里的 **表格和图片的标题格式**，包括字体、对齐、编号等。你可以用它来
**全局修改** 或 **局部调整**，让你的论文或报告更美观！ 🚀