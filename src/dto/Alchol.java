package dto;
 
public class Alchol implements java.io.Serializable{
	
	private static final long serialVersionUID = -4274700572038677000L;
	
    private String id;//술 id
    private String name; //술이름
    private Integer price;// 가격
    private String description;//설명
    private String proof; //알콜 도수
    private String category;//분류
    private long stock;//재고 수
    private int sale;//세일
    private String origin; //원산지
    private String Capacity; //용량
    private String file; //파일
    private int compare; //비교
    private int quantity; //장바구니에 담은 개수
    

    
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