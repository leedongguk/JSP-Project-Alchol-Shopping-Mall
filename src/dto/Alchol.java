package dto;
 
public class Alchol implements java.io.Serializable{
	
	private static final long serialVersionUID = -4274700572038677000L;
	
    private String id;//�� id
    private String name; //���̸�
    private Integer price;// ����
    private String description;//����
    private String proof; //���� ����
    private String category;//�з�
    private long stock;//��� ��
    private int sale;//����
    private String origin; //������
    private String Capacity; //�뷮
    private String file; //����
    private int compare; //��
    private int quantity; //��ٱ��Ͽ� ���� ����
    

    
    public Alchol() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	public Alchol(String id, int compare) {
		this.id = id;
		this.compare = compare;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public int getCompare() {
		return compare;
	}
	
	public void setCompare(int compare) {
		this.compare = compare;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getProof() {
		return proof;
	}

	public void setProof(String proof) {
		this.proof = proof;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getStock() {
		return stock;
	}

	public void setStock(long stock) {
		this.stock = stock;
	}

	public int getSale() {
		return sale;
	}

	public void setSale(int sale) {
		this.sale = sale;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getCapacity() {
		return Capacity;
	}

	public void setCapacity(String capacity) {
		Capacity = capacity;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}
	
	

    
	
    
 

    
    
}