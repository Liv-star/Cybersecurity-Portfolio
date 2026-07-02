# Network Traffic Capture with Wireshark

**Task:** Task 8 – Capture Network Traffic with Wireshark

**Analyst:** Praise Olivia Mazana

**Tool:** Wireshark

**Operating System:** Ubuntu Linux

---

# Objective

The objective of this task was to install Wireshark, capture live network traffic on a local network, filter HTTP packets, and analyze the captured data.

---

# Tools Used

- Ubuntu Linux
- Wireshark
- Firefox Web Browser
- Wireless Network Interface (wlp2s0)

---

# Installing Wireshark

Update the package repository:

```bash
sudo apt update
```

Install Wireshark:

```bash
sudo apt install wireshark -y
```

Verify installation:

```bash
wireshark --version
```

Launch Wireshark:

```bash
wireshark
```

---

# Capturing Network Traffic

The following steps were performed:

1. Opened Wireshark.
2. Selected the wireless interface **wlp2s0**.
3. Started packet capture.
4. Generated network traffic by browsing websites.
5. Allowed Wireshark to capture packets.
6. Stopped the capture after sufficient traffic had been collected.
7. Saved the capture as:

```
wireshark_capture.pcap
```

---

# Filtering HTTP Traffic

After capturing traffic, the following display filter was applied:

```
http
```

This filter displays only HTTP packets, making it easier to analyze web traffic.

---

# Packet Analysis

The captured HTTP packets contained the following information:

- Source IP Address
- Destination IP Address
- Source Port
- Destination Port
- HTTP GET Requests
- HTTP/1.1 Responses
- Packet Length
- Time Stamps

One of the captured packets showed:

```
Request Method: GET

Protocol: HTTP/1.1

Destination Port: 80

Connection: close
```

Several responses returned:

```
HTTP/1.1 204 No Content
```

This indicates that the web server successfully processed the request but did not return any content.

---

# Screenshots

The repository includes the following screenshots:

```
screenshots/
│
├── capture_started.png
├── http_filter.png
```

### Screenshot 1

Packet capture running on interface **wlp2s0**.

### Screenshot 2

HTTP display filter applied, showing HTTP GET requests and HTTP responses.

---

# Files Included

```
README.md
wireshark_capture.pcap
screenshots/
```

---

# Learning Outcomes

This project provided practical experience in:

- Installing Wireshark
- Capturing live network traffic
- Selecting the correct network interface
- Using display filters
- Analyzing HTTP packets
- Identifying source and destination IP addresses
- Understanding HTTP request and response communication

---

# Conclusion

This project successfully demonstrated how to capture and analyze network traffic using Wireshark. HTTP traffic was filtered using the **http** display filter, allowing examination of HTTP GET requests and server responses. Packet analysis is an essential skill in cybersecurity because it helps analysts troubleshoot network issues, investigate incidents, and detect suspicious activity.
