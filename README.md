# Tệp Script Cài Đặt IMP_13

Tệp này chứa script Inno Setup (`setup.iss`) để tạo trình cài đặt cho phần mềm `IMP_13`.

## Yêu Cầu

- Cần cài đặt [Inno Setup](http://www.jrsoftware.org/isinfo.php) trên hệ thống của bạn.

## Tổng Quan về Script

Script `setup.iss` sẽ tạo trình cài đặt:
- Cho phép người dùng chọn thư mục cài đặt.
- Tạo shortcut trên desktop và trong menu Start dựa trên lựa chọn của người dùng.
- Bao gồm tất cả các tệp từ thư mục nguồn được chỉ định.
- Tùy chọn chạy ứng dụng sau khi cài đặt.

## Cách Sử Dụng

1. **Clone hoặc Tải Về Repository**: 
   Clone repository hoặc tải tệp `setup.iss` về máy tính của bạn.

2. **Chỉnh Sửa Script**:
   Mở `setup.iss` bằng trình soạn thảo văn bản và đảm bảo rằng các đường dẫn tệp và thông tin về ứng dụng là chính xác. Các phần cần kiểm tra:
   - **[Setup]**: Thay đổi `AppName`, `AppVersion`, và các thông tin cụ thể về ứng dụng khác. *Phần này có thể chỉnh sửa.*
   - **[Files]**: Đảm bảo đường dẫn `Source` trỏ đến thư mục chính xác chứa các tệp ứng dụng của bạn. *Phần này có thể chỉnh sửa.*
   - **[Icons]**: Đảm bảo rằng các đường dẫn đến tệp thực thi của bạn là chính xác. *Phần này có thể chỉnh sửa.*

3. **Compile Script**:
   Mở Inno Setup Compiler và tải tệp `setup.iss`. Nhấn "Compile" để tạo tệp cài đặt. Tệp xuất ra sẽ được lưu trên desktop của bạn.

## Chi Tiết về Script

### [Setup]

Định nghĩa thông tin cơ bản về trình cài đặt:
- `AppName`: Tên của ứng dụng của bạn. *Phần này có thể chỉnh sửa.*
- `AppVersion`: Phiên bản của ứng dụng của bạn. *Phần này có thể chỉnh sửa.*
- `DefaultDirName`: Thư mục cài đặt mặc định (có thể thay đổi bởi người dùng). *Phần này có thể chỉnh sửa.*
- `DefaultGroupName`: Tên nhóm trong menu Start. *Phần này có thể chỉnh sửa.*
- `OutputDir`: Thư mục xuất tệp cài đặt, đặt ra ngoài desktop. *Phần này có thể chỉnh sửa.*
- `OutputBaseFilename`: Tên tệp cài đặt sau khi biên dịch. *Phần này có thể chỉnh sửa.*
- `Compression`: Phương pháp nén sử dụng cho trình cài đặt. *Phần này không nên chỉnh sửa trừ khi bạn biết mình đang làm gì.*
- `DisableDirPage`: Đặt là `no` để cho phép người dùng chọn thư mục cài đặt. *Phần này có thể chỉnh sửa.*

### [Languages]

Chỉ định ngôn ngữ của trình cài đặt:
- `Name`: Tên ngôn ngữ (đặt là tiếng Anh). *Phần này có thể chỉnh sửa nếu bạn muốn sử dụng ngôn ngữ khác.*
- `MessagesFile`: Tệp chứa các thông báo theo ngôn ngữ. *Phần này có thể chỉnh sửa nếu bạn thay đổi ngôn ngữ.*

### [Tasks]

Định nghĩa các nhiệm vụ tùy chọn mà người dùng có thể chọn trong quá trình cài đặt:
- `desktopicon`: Checkbox để tạo shortcut trên desktop. *Phần này có thể chỉnh sửa.*
- `startmenuicon`: Checkbox để tạo shortcut trong menu Start. *Phần này có thể chỉnh sửa.*

### [Files]

Chỉ định các tệp để bao gồm trong trình cài đặt:
- `Source`: Đường dẫn đến các tệp nguồn. *Phần này có thể chỉnh sửa.*
- `DestDir`: Thư mục đích trên hệ thống của người dùng. *Phần này không nên chỉnh sửa.*
- `Flags`: Các tùy chọn để bao gồm các thư mục con và bỏ qua kiểm tra phiên bản. *Phần này không nên chỉnh sửa trừ khi bạn biết mình đang làm gì.*

### [Icons]

Định nghĩa các shortcut để tạo:
- `Name`: Tên của shortcut. *Phần này có thể chỉnh sửa.*
- `Filename`: Đường dẫn đến tệp thực thi. *Phần này có thể chỉnh sửa.*
- `WorkingDir`: Thư mục làm việc cho shortcut. *Phần này không nên chỉnh sửa trừ khi bạn biết mình đang làm gì.*
- `Tasks`: Liên kết với các nhiệm vụ tạo shortcut (`desktopicon` và `startmenuicon`). *Phần này không nên chỉnh sửa trừ khi bạn thay đổi các nhiệm vụ.*

### [Run]

Chỉ định các hành động thực hiện sau khi cài đặt:
- `Filename`: Đường dẫn đến tệp thực thi để chạy sau khi cài đặt. *Phần này có thể chỉnh sửa.*
- `Description`: Mô tả cho hành động chạy phần mềm. *Phần này có thể chỉnh sửa.*
- `Flags`: Các cờ điều khiển hành vi chạy phần mềm sau khi cài đặt. *Phần này không nên chỉnh sửa trừ khi bạn biết mình đang làm gì.*

## Ví Dụ

Dưới đây là ví dụ về cách script trông như thế nào:

```plaintext
[Setup]
AppName=IMP_13
AppVersion=1.0
DefaultDirName={pf}\IMP_13
DefaultGroupName=Developer Creative Software
OutputDir={userdesktop}
OutputBaseFilename=IMP_13_Setup
Compression=lzma
SolidCompression=yes
DisableDirPage=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"; Flags: unchecked
Name: "startmenuicon"; Description: "Create a &Start Menu icon"; GroupDescription: "Additional icons:"; Flags: unchecked

[Files]
Source: "C:\Users\kutdi\Desktop\IMP 13\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\IMP_13"; Filename: "{app}\IMP 13.EXE"; WorkingDir: "{app}"; Tasks: startmenuicon
Name: "{commondesktop}\IMP_13"; Filename: "{app}\IMP 13.EXE"; WorkingDir: "{app}"; Tasks: desktopicon

[Run]
Filename: "{app}\IMP 13.EXE"; Description: "Launch IMP_13"; Flags: nowait postinstall skipifsilent
```

## Hỗ Trợ

Nếu bạn gặp vấn đề hoặc có câu hỏi, hãy mở một issue trên repository hoặc liên hệ với đội ngũ hỗ trợ.
