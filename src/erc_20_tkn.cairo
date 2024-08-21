use starknet::ContractAddress;

#[starknet::interface]
trait IERC_20<T> {
    fn name() -> ByteArray;
    fn symbol() -> ByteArray;
    fn decimals() -> u8;
    fn totalSupply() -> u256;
    fn balanceOf(account: ContractAddress) -> u256;
    fn approve(spender: ContractAddress, amount: u256) -> bool;
    fn allowance(owner: ContractAddress, spender: ContractAddress) -> u256;
    fn transfer(recipient: ContractAddress, amount: u256) -> bool;
    fn transferFrom(sender: ContractAddress, recipient: ContractAddress, amount: u256) -> bool; 
    fn allowance(owner: ContractAddress, spender: ContractAddress) -> u256;
    fn approve(spender: ContractAddress, amount: u256) -> bool;
    fn mint(recipient: ContractAddress, amount: u256) -> u256;
    fn burn(recipient: ContractAddress, amount: u256);
}

#[starknet::contract]
mod erc20Contract {
    use starknet::ContractAddress;

    #[storage]
    struct Storage {
        owner: ContractAddress,
        name: ByteArray;
        symbol: ByteArray;
        decimal: u8;
        total_Supply: u256;
        balances: LagacyMap::<ContractAddress, u256>
    }
}