# Database Yapısı

Bu projede veritabanı MySQL kullanılmıştır.

# Stored Procedure Kullanımı

Önceden `KartIslemControl` isimli bir procedure kullanılıyordu.  
Güncel projede procedure **kullanılmamaktadır** ve tüm iş mantığı Spring Boot servis katmanında yapılmaktadır.

# Sebepler:
- İş kurallarını Java tarafında yönetmek, test edilebilirliği artırmak
- Transaction yönetimi Spring Boot üzerinden daha güvenli ve okunabilir
- ORM (JPA/Hibernate) uyumluluğu

**Not:** Önceki procedure kodu `old_procedure.sql` dosyasında saklanmaktadır.
