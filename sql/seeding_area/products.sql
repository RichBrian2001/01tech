-- 创建农产品种类表
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT '农产品唯一ID',
    name VARCHAR(50) NOT NULL UNIQUE COMMENT '农产品名称',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '记录创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='农产品种类表';

-- 插入10种农产品数据
INSERT INTO products (name) VALUES
('大豆'),
('甘蔗'),
('高粱'),
('谷子'),
('花生'),
('马铃薯'),
('棉花'),
('小麦'),
('烟叶'),
('玉米');

-- 验证数据插入
SELECT * FROM products;