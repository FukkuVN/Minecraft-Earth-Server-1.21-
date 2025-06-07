# Hướng Dẫn Cài Đặt Server Minecraft Sinh Tồn Hỗ Trợ Chơi Chéo (Java 1.20+ & Bedrock)

Hướng dẫn này giải thích cách cài đặt server Minecraft sinh tồn hỗ trợ chơi chéo giữa phiên bản Java 1.20+ và Bedrock sử dụng PaperMC, GeyserMC và Floodgate.

## Yêu Cầu

- Máy chủ có cài Java.
- File jar server PaperMC 1.20+.
- Plugin GeyserMC cho Paper.
- Plugin Floodgate cho Paper.

## Bước 1: Tải PaperMC 1.20+

1. Truy cập https://papermc.io/downloads
2. Tải file jar PaperMC 1.20+ mới nhất.
3. Đặt file jar vào thư mục server (ví dụ thư mục gốc của dự án này).

## Bước 2: Cài Đặt Server PaperMC

1. Chạy file jar server một lần để tạo các file cấu hình:
   ```
   java -jar paper-1.21.4-231.jar
   ```
2. Đồng ý với EULA bằng cách chỉnh sửa file `eula.txt` và đặt:
   ```
   eula=true
   ```

## Bước 3: Tải Plugin GeyserMC và Floodgate

- Plugin GeyserMC: https://github.com/GeyserMC/Geyser/releases/latest
- Plugin Floodgate: https://github.com/GeyserMC/Floodgate/releases/latest

Tải các bản mới nhất của cả hai plugin và đặt vào thư mục `server/plugins`.

## Bước 4: Cấu Hình GeyserMC

1. Khởi động server một lần để tạo file `server/plugins/Geyser-Spigot/config.yml`.
2. Chỉnh sửa `config.yml` với nội dung sau:

```yaml
bedrock:
  address: 0.0.0.0   # Địa chỉ IP để lắng nghe kết nối Bedrock
  port: 19132        # Cổng mặc định của Bedrock

remote:
  address: 127.0.0.1 # Địa chỉ IP của server Java (thường là localhost)
  port: 25565        # Cổng server Java

auth-type: floodgate  # Sử dụng Floodgate để xác thực Bedrock
```

## Bước 5: Cài Đặt Floodgate

Floodgate tự động hoạt động khi `auth-type` được đặt là `floodgate` trong cấu hình GeyserMC. Không cần cấu hình thêm.

## Bước 6: Khởi Động Server

Chạy server bằng script đã cung cấp:

```
.\run_server.bat
```

Script này sẽ di chuyển file jar PaperMC vào thư mục `server` nếu cần và khởi động server với cấu hình bộ nhớ phù hợp.

## Bước 7: Kết Nối Tới Server

- Người chơi Java Edition kết nối tới `yourserver:25565`
- Người chơi Bedrock Edition kết nối tới `yourserver:19132` (cổng UDP)

## Tài Nguyên Tham Khảo

- [Trang chính thức GeyserMC](https://geysermc.org/)
- [Kho mã nguồn Floodgate trên GitHub](https://github.com/GeyserMC/Floodgate)

## Chọn Ngôn Ngữ Trong Discord

Nếu bạn tham gia server Discord chính thức để được hỗ trợ, bạn có thể chọn kênh ngôn ngữ phù hợp để giao tiếp bằng tiếng Anh hoặc tiếng Việt.
