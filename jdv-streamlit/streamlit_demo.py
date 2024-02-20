import streamlit as st
import pandas as pd

def main():
    st.title("CSV Viewer")
    
    # Upload CSV file
    # uploaded_file = st.file_uploader("Choose a CSV file", type="csv")
    
    my_dataframe = pd.DataFrame({
        'first column': [1, 2, 3, 4],
        'second column': [10, 20, 30, 40]
    })
    st.dataframe(my_dataframe)
    # if uploaded_file is not None:
    #     # Read the CSV file
    #     df = pd.read_csv(uploaded_file)
        
    #     # Display the DataFrame
    #     st.write(df)

if __name__ == "__main__":
    main()