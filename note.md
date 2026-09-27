## Task 01：Project Hunt

- 使用 `ls -a workspace` 查看隐藏项，发现 `.project`。
- 使用 `ls -la workspace` 查看详细信息，确认 `.project` 是文件夹：权限信息以 `d` 开头。
- 使用 `ls -la workspace/.project` 找到普通文件 `metadata`。
- 使用 `cat workspace/.project/metadata` 查看内容，找到编号 `LSR-2026-0831`。
- 将编号写入 `output/01_project_id.txt`。
- 从 `workspace/src/utils/` 出发，需要返回两层，再进入 `.project`，所以相对路径是 `../../.project/metadata`，已写入 `output/01_relative_path.txt`。
- 运行 `./check.sh 01`，结果为 `[PASS] 01 Project Hunt`。

学到的要点：
- 以 `.` 开头的文件或文件夹默认隐藏，`ls -a` 可以显示。
- `..` 表示上一层目录，`.` 表示当前目录。
- `cat` 用于查看文本内容。
- `>` 把输出写入文件，会覆盖文件原有内容。
